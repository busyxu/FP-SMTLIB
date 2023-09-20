(declare-fun a_ack!154 () (_ BitVec 32))
(declare-fun b_ack!152 () (_ BitVec 32))
(declare-fun c_ack!153 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt a_ack!154 #x00000000)))
(assert (not (bvslt b_ack!152 a_ack!154)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!153) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt (bvadd #x00000001 b_ack!152) #x00000000)))
(assert (fp.lt ((_ to_fp 11 53) c_ack!153) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (= #x00000000 (bvand (bvadd #x00000001 b_ack!152) #x00000001))))
(assert (not (= #xffffffff b_ack!152)))
(assert (not (= #x00000000 b_ack!152)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    ((_ to_fp 11 53) c_ack!153))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_OVERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) #x8000000000000000)
          ((_ to_fp 11 53) c_ack!153))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) #x8000000000000000)
          ((_ to_fp 11 53) c_ack!153))))

(check-sat)
(exit)
