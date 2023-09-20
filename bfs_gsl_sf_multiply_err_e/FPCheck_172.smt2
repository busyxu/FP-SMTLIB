(declare-fun a_ack!1033 () (_ BitVec 64))
(declare-fun c_ack!1031 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun d_ack!1032 () (_ BitVec 64))
(declare-fun b_ack!1030 () (_ BitVec 64))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!1033) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!1031) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq (fp.abs ((_ to_fp 11 53) a_ack!1033))
             ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.leq (fp.abs ((_ to_fp 11 53) c_ack!1031))
             ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!1033))
            (fp.abs ((_ to_fp 11 53) c_ack!1031)))))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!1033))
            (fp.abs ((_ to_fp 11 53) c_ack!1031)))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) c_ack!1031))
            ((_ to_fp 11 53) #x5feccccccccccccc))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) c_ack!1031))
       (fp.div roundNearestTiesToEven
               ((_ to_fp 11 53) #x7feffffffffffffb)
               (fp.abs ((_ to_fp 11 53) c_ack!1031)))))
(assert (let ((a!1 (fp.lt (fp.abs (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) a_ack!1033)
                                  ((_ to_fp 11 53) c_ack!1031)))
                  ((_ to_fp 11 53) #x0010000000000000))))
  (not a!1)))
(assert (FPCHECK_FADD_OVERFLOW
  (fp.abs (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) b_ack!1030)
                  ((_ to_fp 11 53) c_ack!1031)))
  (fp.abs (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) d_ack!1032)
                  ((_ to_fp 11 53) a_ack!1033)))))

(check-sat)
(exit)
