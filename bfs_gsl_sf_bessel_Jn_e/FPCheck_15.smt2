(declare-fun a_ack!67 () (_ BitVec 32))
(declare-fun b_ack!66 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (bvslt a_ack!67 #x00000000))
(assert (not (= #x00000000 (bvand (bvsub #x00000000 a_ack!67) #x00000001))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!66) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (= #x00000000 (bvand (bvsub #x00000000 a_ack!67) #x00000001))))
(assert (not (= #x00000000 a_ack!67)))
(assert (not (= #xffffffff a_ack!67)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    ((_ to_fp 11 53) b_ack!66))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_OVERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) #x8000000000000000)
          ((_ to_fp 11 53) b_ack!66))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) #x8000000000000000)
          ((_ to_fp 11 53) b_ack!66))))

(check-sat)
(exit)
