(declare-fun mu_ack!97 () (_ BitVec 64))
(declare-fun x_ack!98 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.gt ((_ to_fp 11 53) mu_ack!97) ((_ to_fp 11 53) #x403e000000000000))))
(assert (not (fp.lt (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!98)
                    ((_ to_fp 11 53) x_ack!98))
            ((_ to_fp 11 53) mu_ack!97))))
(assert (let ((a!1 (and (fp.eq ((_ to_fp 11 53) mu_ack!97)
                       ((_ to_fp 11 53) #x0000000000000000))
                (fp.eq (fp.mul roundNearestTiesToEven
                               ((_ to_fp 11 53) x_ack!98)
                               ((_ to_fp 11 53) x_ack!98))
                       ((_ to_fp 11 53) #x0000000000000000)))))
  (not a!1)))
(assert (FPCHECK_FADD_UNDERFLOW
  #x3ff0000000000000
  (fp.div roundNearestTiesToEven
          ((_ to_fp 11 53) mu_ack!97)
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) x_ack!98)
                  ((_ to_fp 11 53) x_ack!98)))))

(check-sat)
(exit)
