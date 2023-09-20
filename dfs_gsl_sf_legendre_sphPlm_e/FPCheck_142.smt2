(declare-fun b_ack!750 () (_ BitVec 32))
(declare-fun a_ack!752 () (_ BitVec 32))
(declare-fun c_ack!751 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (bvslt b_ack!750 #x00000000)))
(assert (not (bvslt a_ack!752 b_ack!750)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!751) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!751) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (= #x00000000 b_ack!750))
(assert (not (bvslt a_ack!752 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!751) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!751) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (= #x00000000 a_ack!752)))
(assert (not (= #x00000001 a_ack!752)))
(assert (= #x00000002 a_ack!752))
(assert (FPCHECK_FSUB_UNDERFLOW
  (fp.mul roundNearestTiesToEven
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) #x4008000000000000)
                  ((_ to_fp 11 53) c_ack!751))
          ((_ to_fp 11 53) c_ack!751))
  #x3ff0000000000000))

(check-sat)
(exit)
