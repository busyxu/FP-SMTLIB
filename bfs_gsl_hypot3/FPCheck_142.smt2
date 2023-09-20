(declare-fun c_ack!731 () (_ BitVec 64))
(declare-fun b_ack!730 () (_ BitVec 64))
(declare-fun a_ack!732 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!730))
            (fp.abs ((_ to_fp 11 53) c_ack!731)))))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!732))
       (fp.abs ((_ to_fp 11 53) c_ack!731))))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!732))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!732))
                           (fp.abs ((_ to_fp 11 53) a_ack!732)))
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!732))
                           (fp.abs ((_ to_fp 11 53) a_ack!732)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!730))
                           (fp.abs ((_ to_fp 11 53) a_ack!732)))
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!730))
                           (fp.abs ((_ to_fp 11 53) a_ack!732))))))
  (FPCHECK_FADD_OVERFLOW a!1 a!2)))

(check-sat)
(exit)
