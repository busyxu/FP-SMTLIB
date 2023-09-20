(declare-fun x1_ack!7006 () (_ BitVec 64))
(declare-fun x0_ack!7013 () (_ BitVec 64))
(declare-fun x2_ack!7007 () (_ BitVec 64))
(declare-fun b_ack!7012 () (_ BitVec 64))
(declare-fun a_ack!7011 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!7008 () (_ BitVec 64))
(declare-fun y1_ack!7009 () (_ BitVec 64))
(declare-fun y2_ack!7010 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!7013) ((_ to_fp 11 53) x1_ack!7006)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!7006) ((_ to_fp 11 53) x2_ack!7007)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7006)
                       ((_ to_fp 11 53) x0_ack!7013))
               ((_ to_fp 11 53) x0_ack!7013))
       ((_ to_fp 11 53) x1_ack!7006)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!7006)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7006)
                       ((_ to_fp 11 53) x0_ack!7013)))
       ((_ to_fp 11 53) x0_ack!7013)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7007)
                       ((_ to_fp 11 53) x1_ack!7006))
               ((_ to_fp 11 53) x1_ack!7006))
       ((_ to_fp 11 53) x2_ack!7007)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!7007)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7007)
                       ((_ to_fp 11 53) x1_ack!7006)))
       ((_ to_fp 11 53) x1_ack!7006)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7006)
                    ((_ to_fp 11 53) x0_ack!7013))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!7007)
                    ((_ to_fp 11 53) x1_ack!7006))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!7011) ((_ to_fp 11 53) b_ack!7012))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7011) ((_ to_fp 11 53) x0_ack!7013))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!7012) ((_ to_fp 11 53) x2_ack!7007))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!7011) ((_ to_fp 11 53) b_ack!7012))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7011) ((_ to_fp 11 53) x0_ack!7013))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!7011) ((_ to_fp 11 53) x1_ack!7006)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!7006) ((_ to_fp 11 53) a_ack!7011))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!7012) ((_ to_fp 11 53) x1_ack!7006))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!7012) ((_ to_fp 11 53) x2_ack!7007))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!7007)
                    ((_ to_fp 11 53) x1_ack!7006))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!7010)
                           ((_ to_fp 11 53) y1_ack!7009))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!7007)
                                   ((_ to_fp 11 53) x1_ack!7006)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!7009)
                           ((_ to_fp 11 53) y0_ack!7008))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!7006)
                                   ((_ to_fp 11 53) x0_ack!7013)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!7007)
                                   ((_ to_fp 11 53) x1_ack!7006))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!7006)
                                   ((_ to_fp 11 53) x0_ack!7013)))))
      (a!7 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!7011)
                                   ((_ to_fp 11 53) x1_ack!7006))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!7011)
                                   ((_ to_fp 11 53) x1_ack!7006)))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!7012)
                                   ((_ to_fp 11 53) x1_ack!7006))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!7012)
                                   ((_ to_fp 11 53) x1_ack!7006))))))
(let ((a!4 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x0000000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   (fp.sub roundNearestTiesToEven a!1 a!2))
                           a!3))))
(let ((a!5 (fp.div roundNearestTiesToEven
                   a!4
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4008000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!7007)
                                   ((_ to_fp 11 53) x1_ack!7006))))))
(let ((a!6 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fd0000000000000)
                           a!5)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!7011)
                                   ((_ to_fp 11 53) x1_ack!7006))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!7012)
                                   ((_ to_fp 11 53) x1_ack!7006))))))
  (FPCHECK_FMUL_ACCURACY a!6 a!7))))))

(check-sat)
(exit)
