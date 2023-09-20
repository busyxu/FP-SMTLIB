(declare-fun d_ack!590 () (_ BitVec 64))
(declare-fun b_ack!589 () (_ BitVec 32))
(declare-fun a_ack!592 () (_ BitVec 64))
(declare-fun c_ack!591 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.eq ((_ to_fp 11 53) d_ack!590) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (bvsle #x00000000 b_ack!589)))
(assert (fp.eq ((_ to_fp 11 53) a_ack!592) ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.lt (fp.abs (fp.div roundNearestTiesToEven
                                  ((_ to_fp 11 53) c_ack!591)
                                  ((_ to_fp 11 53) #x3ff0000000000000)))
                  ((_ to_fp 11 53) #x3cb0000000000000))))
  (not a!1)))
(assert (FPCHECK_FDIV_UNDERFLOW
  #xc06613ae51a32f5d
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) #x4030000000000000)
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) c_ack!591)
                  ((_ to_fp 11 53) c_ack!591)))))

(check-sat)
(exit)
