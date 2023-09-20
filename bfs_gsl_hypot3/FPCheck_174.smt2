(declare-fun c_ack!935 () (_ BitVec 64))
(declare-fun b_ack!934 () (_ BitVec 64))
(declare-fun a_ack!936 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!934))
       (fp.abs ((_ to_fp 11 53) c_ack!935))))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!936))
       (fp.abs ((_ to_fp 11 53) b_ack!934))))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!936))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!936))
                           (fp.abs ((_ to_fp 11 53) a_ack!936)))
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!936))
                           (fp.abs ((_ to_fp 11 53) a_ack!936)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!934))
                           (fp.abs ((_ to_fp 11 53) a_ack!936)))
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!934))
                           (fp.abs ((_ to_fp 11 53) a_ack!936))))))
  (FPCHECK_FADD_UNDERFLOW a!1 a!2)))

(check-sat)
(exit)
