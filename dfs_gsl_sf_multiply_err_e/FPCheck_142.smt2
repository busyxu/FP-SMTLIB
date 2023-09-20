(declare-fun a_ack!889 () (_ BitVec 64))
(declare-fun c_ack!887 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun d_ack!888 () (_ BitVec 64))
(declare-fun b_ack!886 () (_ BitVec 64))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!889) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!887) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq (fp.abs ((_ to_fp 11 53) a_ack!889))
             ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.leq (fp.abs ((_ to_fp 11 53) c_ack!887))
             ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!889))
            (fp.abs ((_ to_fp 11 53) c_ack!887)))))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!889))
       (fp.abs ((_ to_fp 11 53) c_ack!887))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!889))
       ((_ to_fp 11 53) #x5feccccccccccccc)))
(assert (let ((a!1 (fp.lt (fp.abs (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) a_ack!889)
                                  ((_ to_fp 11 53) c_ack!887)))
                  ((_ to_fp 11 53) #x0010000000000000))))
  (not a!1)))
(assert (FPCHECK_FADD_UNDERFLOW
  (fp.abs (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) b_ack!886)
                  ((_ to_fp 11 53) c_ack!887)))
  (fp.abs (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) d_ack!888)
                  ((_ to_fp 11 53) a_ack!889)))))

(check-sat)
(exit)
