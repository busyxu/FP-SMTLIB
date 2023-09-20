(declare-fun a_ack!694 () (_ BitVec 64))
(declare-fun c_ack!692 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun d_ack!693 () (_ BitVec 64))
(declare-fun b_ack!691 () (_ BitVec 64))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!694) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!692) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq (fp.abs ((_ to_fp 11 53) a_ack!694))
             ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.leq (fp.abs ((_ to_fp 11 53) c_ack!692))
        ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.geq (fp.abs ((_ to_fp 11 53) a_ack!694))
        ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3cc0000000000000)
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!694)
                                   ((_ to_fp 11 53) c_ack!692)))))
      (a!2 (fp.add roundNearestTiesToEven
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!691)
                                   ((_ to_fp 11 53) c_ack!692)))
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) d_ack!693)
                                   ((_ to_fp 11 53) a_ack!694))))))
  (FPCHECK_FADD_ACCURACY a!1 a!2)))

(check-sat)
(exit)
