(declare-fun b_ack!1246 () (_ BitVec 32))
(declare-fun a_ack!1248 () (_ BitVec 32))
(declare-fun c_ack!1247 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (bvslt b_ack!1246 #x00000000)))
(assert (not (bvslt a_ack!1248 #x00000000)))
(assert (not (= #x00000000 b_ack!1246)))
(assert (not (= #x00000001 b_ack!1246)))
(assert (not (= #x00000000 a_ack!1248)))
(assert (= #x00000001 a_ack!1248))
(assert (not (bvslt b_ack!1246 #x00000000)))
(assert (not (= #x00000000 b_ack!1246)))
(assert (not (= #x00000001 b_ack!1246)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!1247) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) c_ack!1247))
            ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (bvslt #x00000001 b_ack!1246))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) c_ack!1247))
            ((_ to_fp 11 53) #x7fefffffffffffff))))
(assert (not (bvslt #x00000002 b_ack!1246)))
(assert (not (bvslt (bvadd #xffffffff b_ack!1246) #x00000000)))
(assert (not (= #x00000001 b_ack!1246)))
(assert (= #x00000002 b_ack!1246))
(assert (FPCHECK_FMUL_UNDERFLOW
  ((_ to_fp 11 53) roundNearestTiesToEven b_ack!1246)
  c_ack!1247))

(check-sat)
(exit)
