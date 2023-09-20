(declare-fun c_ack!929 () (_ BitVec 64))
(declare-fun b_ack!928 () (_ BitVec 64))
(declare-fun a_ack!930 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!928))
       (fp.abs ((_ to_fp 11 53) c_ack!929))))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!930))
       (fp.abs ((_ to_fp 11 53) b_ack!928))))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!930))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!930))
                           (fp.abs ((_ to_fp 11 53) a_ack!930)))
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!930))
                           (fp.abs ((_ to_fp 11 53) a_ack!930)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!928))
                           (fp.abs ((_ to_fp 11 53) a_ack!930)))
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!928))
                           (fp.abs ((_ to_fp 11 53) a_ack!930))))))
  (FPCHECK_FADD_OVERFLOW a!1 a!2)))

(check-sat)
(exit)
