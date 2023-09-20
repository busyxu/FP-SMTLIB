(declare-fun a_ack!160 () (_ BitVec 32))
(declare-fun b_ack!158 () (_ BitVec 32))
(declare-fun c_ack!159 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt a_ack!160 #x00000000)))
(assert (not (bvslt b_ack!158 a_ack!160)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!159) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt (bvadd #x00000001 b_ack!158) #x00000000)))
(assert (fp.lt ((_ to_fp 11 53) c_ack!159) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (= #x00000000 (bvand (bvadd #x00000001 b_ack!158) #x00000001))))
(assert (not (= #xffffffff b_ack!158)))
(assert (not (= #x00000000 b_ack!158)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    ((_ to_fp 11 53) c_ack!159))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_UNDERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) #x8000000000000000)
          ((_ to_fp 11 53) c_ack!159))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) #x8000000000000000)
          ((_ to_fp 11 53) c_ack!159))))

(check-sat)
(exit)
