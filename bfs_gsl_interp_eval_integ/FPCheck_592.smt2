(declare-fun x1_ack!7430 () (_ BitVec 64))
(declare-fun x0_ack!7437 () (_ BitVec 64))
(declare-fun x2_ack!7431 () (_ BitVec 64))
(declare-fun b_ack!7436 () (_ BitVec 64))
(declare-fun a_ack!7435 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun y0_ack!7432 () (_ BitVec 64))
(declare-fun y1_ack!7433 () (_ BitVec 64))
(declare-fun y2_ack!7434 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!7437) ((_ to_fp 11 53) x1_ack!7430)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!7430) ((_ to_fp 11 53) x2_ack!7431)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7430)
                       ((_ to_fp 11 53) x0_ack!7437))
               ((_ to_fp 11 53) x0_ack!7437))
       ((_ to_fp 11 53) x1_ack!7430)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!7430)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7430)
                       ((_ to_fp 11 53) x0_ack!7437)))
       ((_ to_fp 11 53) x0_ack!7437)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7431)
                       ((_ to_fp 11 53) x1_ack!7430))
               ((_ to_fp 11 53) x1_ack!7430))
       ((_ to_fp 11 53) x2_ack!7431)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!7431)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7431)
                       ((_ to_fp 11 53) x1_ack!7430)))
       ((_ to_fp 11 53) x1_ack!7430)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7430)
                    ((_ to_fp 11 53) x0_ack!7437))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!7431)
                    ((_ to_fp 11 53) x1_ack!7430))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!7435) ((_ to_fp 11 53) b_ack!7436))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7435) ((_ to_fp 11 53) x0_ack!7437))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!7436) ((_ to_fp 11 53) x2_ack!7431))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!7435) ((_ to_fp 11 53) b_ack!7436))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7435) ((_ to_fp 11 53) x0_ack!7437))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!7435) ((_ to_fp 11 53) x1_ack!7430))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!7436) ((_ to_fp 11 53) x0_ack!7437))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!7436) ((_ to_fp 11 53) x1_ack!7430)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!7430) ((_ to_fp 11 53) b_ack!7436))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7430)
                    ((_ to_fp 11 53) x0_ack!7437))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!7431)
                    ((_ to_fp 11 53) x1_ack!7430))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!7434)
                           ((_ to_fp 11 53) y1_ack!7433))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!7431)
                                   ((_ to_fp 11 53) x1_ack!7430)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!7433)
                           ((_ to_fp 11 53) y0_ack!7432))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!7430)
                                   ((_ to_fp 11 53) x0_ack!7437)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!7431)
                                   ((_ to_fp 11 53) x1_ack!7430))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!7430)
                                   ((_ to_fp 11 53) x0_ack!7437))))))
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
                                   ((_ to_fp 11 53) x2_ack!7431)
                                   ((_ to_fp 11 53) x1_ack!7430))))))
  (FPCHECK_FMUL_OVERFLOW #x3fd0000000000000 a!5)))))

(check-sat)
(exit)
