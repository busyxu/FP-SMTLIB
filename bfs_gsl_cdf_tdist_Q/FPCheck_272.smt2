(declare-fun mu_ack!689 () (_ BitVec 64))
(declare-fun x_ack!690 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.gt ((_ to_fp 11 53) mu_ack!689) ((_ to_fp 11 53) #x403e000000000000)))
(assert (not (fp.lt (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!690)
                    ((_ to_fp 11 53) x_ack!690))
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4024000000000000)
                    ((_ to_fp 11 53) mu_ack!689)))))
(assert (not (fp.lt (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!690)
                    ((_ to_fp 11 53) x_ack!690))
            ((_ to_fp 11 53) mu_ack!689))))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) x_ack!690))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) x_ack!690)
                       ((_ to_fp 11 53) x_ack!690))
               ((_ to_fp 11 53) x_ack!690))
       ((_ to_fp 11 53) x_ack!690)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) x_ack!690))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) x_ack!690)
                       ((_ to_fp 11 53) x_ack!690))
               ((_ to_fp 11 53) x_ack!690))
       ((_ to_fp 11 53) x_ack!690)))
(assert (FPCHECK_FADD_UNDERFLOW
  #x3ff0000000000000
  (fp.div roundNearestTiesToEven
          ((_ to_fp 11 53) mu_ack!689)
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) x_ack!690)
                  ((_ to_fp 11 53) x_ack!690)))))

(check-sat)
(exit)
