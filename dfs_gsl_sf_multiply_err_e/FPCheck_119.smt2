(declare-fun a_ack!757 () (_ BitVec 64))
(declare-fun c_ack!755 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun d_ack!756 () (_ BitVec 64))
(declare-fun b_ack!754 () (_ BitVec 64))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!757) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!755) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq (fp.abs ((_ to_fp 11 53) a_ack!757))
             ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.leq (fp.abs ((_ to_fp 11 53) c_ack!755))
             ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!757))
            (fp.abs ((_ to_fp 11 53) c_ack!755)))))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!757))
            (fp.abs ((_ to_fp 11 53) c_ack!755)))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) c_ack!755))
       ((_ to_fp 11 53) #x5feccccccccccccc)))
(assert (let ((a!1 (fp.lt (fp.abs (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) a_ack!757)
                                  ((_ to_fp 11 53) c_ack!755)))
                  ((_ to_fp 11 53) #x0010000000000000))))
  (not a!1)))
(assert (FPCHECK_FADD_OVERFLOW
  (fp.abs (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) b_ack!754)
                  ((_ to_fp 11 53) c_ack!755)))
  (fp.abs (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) d_ack!756)
                  ((_ to_fp 11 53) a_ack!757)))))

(check-sat)
(exit)
