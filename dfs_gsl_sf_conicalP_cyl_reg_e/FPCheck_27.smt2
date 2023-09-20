(declare-fun c_ack!154 () (_ BitVec 64))
(declare-fun a_ack!155 () (_ BitVec 32))
(declare-fun b_ack!153 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!154) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (bvslt a_ack!155 #xffffffff)))
(assert (not (= #xffffffff a_ack!155)))
(assert (= #x00000000 a_ack!155))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!154) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!154) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!153) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.leq ((_ to_fp 11 53) c_ack!154) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.lt ((_ to_fp 11 53) b_ack!153) ((_ to_fp 11 53) #x408f400000000000)))
(assert (FPCHECK_FSUB_ACCURACY
  #x3ff0000000000000
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) c_ack!154)
          ((_ to_fp 11 53) c_ack!154))))

(check-sat)
(exit)
