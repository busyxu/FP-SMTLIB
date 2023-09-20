(declare-fun b_ack!153 () (_ BitVec 32))
(declare-fun a_ack!155 () (_ BitVec 32))
(declare-fun c_ack!154 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt b_ack!153 #x00000000)))
(assert (not (bvslt a_ack!155 b_ack!153)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!154) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!154) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (= #x00000000 b_ack!153)))
(assert (= #x00000001 b_ack!153))
(assert (not (bvslt b_ack!153 #x00000000)))
(assert (not (bvslt a_ack!155 b_ack!153)))
(assert (not (= #x00000000 b_ack!153)))
(assert (not (fp.eq ((_ to_fp 11 53) roundNearestTiesToEven (bvsub a_ack!155 b_ack!153))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_UNDERFLOW
  #x3fe0000000000000
  ((_ to_fp 11 53) roundNearestTiesToEven (bvsub a_ack!155 b_ack!153))))

(check-sat)
(exit)
