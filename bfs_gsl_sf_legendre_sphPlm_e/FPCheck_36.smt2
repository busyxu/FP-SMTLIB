(declare-fun b_ack!162 () (_ BitVec 32))
(declare-fun a_ack!164 () (_ BitVec 32))
(declare-fun c_ack!163 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (bvslt b_ack!162 #x00000000)))
(assert (not (bvslt a_ack!164 b_ack!162)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!163) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!163) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (= #x00000000 b_ack!162)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!163) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!163) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (FPCHECK_FMUL_OVERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) #x8000000000000000)
          ((_ to_fp 11 53) c_ack!163))
  c_ack!163))

(check-sat)
(exit)
