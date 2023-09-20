(declare-fun b_ack!360 () (_ BitVec 32))
(declare-fun a_ack!362 () (_ BitVec 32))
(declare-fun c_ack!361 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (bvslt b_ack!360 #x00000000)))
(assert (not (bvslt a_ack!362 b_ack!360)))
(assert (= #x00000000 b_ack!360))
(assert (not (bvslt a_ack!362 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!361) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!361) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (= #x00000000 a_ack!362)))
(assert (not (= #x00000001 a_ack!362)))
(assert (bvsle #x00000002 a_ack!362))
(assert (FPCHECK_FMUL_UNDERFLOW
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) c_ack!361)
          ((_ to_fp 11 53) #x4008000000000000))
  c_ack!361))

(check-sat)
(exit)
