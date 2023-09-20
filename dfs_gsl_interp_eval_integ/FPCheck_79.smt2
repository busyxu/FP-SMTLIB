(declare-fun x1_ack!828 () (_ BitVec 64))
(declare-fun x0_ack!835 () (_ BitVec 64))
(declare-fun x2_ack!829 () (_ BitVec 64))
(declare-fun b_ack!834 () (_ BitVec 64))
(declare-fun a_ack!833 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!830 () (_ BitVec 64))
(declare-fun y1_ack!831 () (_ BitVec 64))
(declare-fun y2_ack!832 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!835) ((_ to_fp 11 53) x1_ack!828)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!828) ((_ to_fp 11 53) x2_ack!829)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!828)
                       ((_ to_fp 11 53) x0_ack!835))
               ((_ to_fp 11 53) x0_ack!835))
       ((_ to_fp 11 53) x1_ack!828)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!828)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!828)
                       ((_ to_fp 11 53) x0_ack!835)))
       ((_ to_fp 11 53) x0_ack!835)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!829)
                       ((_ to_fp 11 53) x1_ack!828))
               ((_ to_fp 11 53) x1_ack!828))
       ((_ to_fp 11 53) x2_ack!829)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!829)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!829)
                       ((_ to_fp 11 53) x1_ack!828)))
       ((_ to_fp 11 53) x1_ack!828)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!828)
                    ((_ to_fp 11 53) x0_ack!835))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!829)
                    ((_ to_fp 11 53) x1_ack!828))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!833) ((_ to_fp 11 53) b_ack!834))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!833) ((_ to_fp 11 53) x0_ack!835))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!834) ((_ to_fp 11 53) x2_ack!829))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!833) ((_ to_fp 11 53) b_ack!834))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!833) ((_ to_fp 11 53) x0_ack!835))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!833) ((_ to_fp 11 53) x1_ack!828))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!834) ((_ to_fp 11 53) x0_ack!835))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!834) ((_ to_fp 11 53) x1_ack!828)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!828) ((_ to_fp 11 53) b_ack!834))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!828)
                    ((_ to_fp 11 53) x0_ack!835))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!832)
                           ((_ to_fp 11 53) y1_ack!831))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!829)
                                   ((_ to_fp 11 53) x1_ack!828)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!831)
                           ((_ to_fp 11 53) y0_ack!830))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!828)
                                   ((_ to_fp 11 53) x0_ack!835)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!829)
                                   ((_ to_fp 11 53) x1_ack!828))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!828)
                                   ((_ to_fp 11 53) x0_ack!835))))))
(let ((a!4 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   (fp.sub roundNearestTiesToEven a!1 a!2))
                           a!3)
                   ((_ to_fp 11 53) #x0000000000000000))))
  (FPCHECK_FDIV_UNDERFLOW
    a!4
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x4008000000000000)
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!828)
                    ((_ to_fp 11 53) x0_ack!835)))))))

(check-sat)
(exit)
