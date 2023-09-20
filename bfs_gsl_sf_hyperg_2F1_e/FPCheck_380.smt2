(declare-fun a_ack!2874 () (_ BitVec 64))
(declare-fun b_ack!2871 () (_ BitVec 64))
(declare-fun c_ack!2872 () (_ BitVec 64))
(declare-fun d_ack!2873 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2874) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!2871) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!2872) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) d_ack!2873)
                                  ((_ to_fp 11 53) #x3ff0000000000000)))
                  ((_ to_fp 11 53) #x3d4f400000000000))))
  (not a!1)))
(assert (not (fp.lt ((_ to_fp 11 53) d_ack!2873) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) #x3ff0000000000000) ((_ to_fp 11 53) d_ack!2873))))
(assert (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) c_ack!2872)
                       ((_ to_fp 11 53) b_ack!2871)))
       ((_ to_fp 11 53) #x3d4f400000000000)))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) d_ack!2873))
       ((_ to_fp 11 53) #x3f48406003b2ae5a)))
(assert (FPCHECK_FADD_UNDERFLOW
  #x3fd5555555555555
  (fp.div roundNearestTiesToEven
          ((_ to_fp 11 53) d_ack!2873)
          ((_ to_fp 11 53) #x4010000000000000))))

(check-sat)
(exit)
