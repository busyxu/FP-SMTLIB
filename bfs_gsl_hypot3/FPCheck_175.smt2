(declare-fun c_ack!938 () (_ BitVec 64))
(declare-fun b_ack!937 () (_ BitVec 64))
(declare-fun a_ack!939 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!937))
       (fp.abs ((_ to_fp 11 53) c_ack!938))))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!939))
       (fp.abs ((_ to_fp 11 53) b_ack!937))))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!939))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!939))
                           (fp.abs ((_ to_fp 11 53) a_ack!939)))
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!939))
                           (fp.abs ((_ to_fp 11 53) a_ack!939)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!937))
                           (fp.abs ((_ to_fp 11 53) a_ack!939)))
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!937))
                           (fp.abs ((_ to_fp 11 53) a_ack!939))))))
  (FPCHECK_FADD_ACCURACY a!1 a!2)))

(check-sat)
(exit)
