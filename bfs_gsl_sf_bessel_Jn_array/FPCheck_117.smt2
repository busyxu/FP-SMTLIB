(declare-fun a_ack!607 () (_ BitVec 32))
(declare-fun b_ack!605 () (_ BitVec 32))
(declare-fun c_ack!606 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt a_ack!607 #x00000000)))
(assert (not (bvslt b_ack!605 a_ack!607)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!606) ((_ to_fp 11 53) #x0000000000000000))))
(assert (bvslt (bvadd #x00000001 b_ack!605) #x00000000))
(assert (= #x00000000 (bvand (bvsub #xffffffff b_ack!605) #x00000001)))
(assert (fp.lt ((_ to_fp 11 53) c_ack!606) ((_ to_fp 11 53) #x0000000000000000)))
(assert (= #x00000000 (bvand (bvsub #xffffffff b_ack!605) #x00000001)))
(assert (not (= #xffffffff b_ack!605)))
(assert (not (= #xfffffffe b_ack!605)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    ((_ to_fp 11 53) c_ack!606))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_UNDERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) #x8000000000000000)
          ((_ to_fp 11 53) c_ack!606))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) #x8000000000000000)
          ((_ to_fp 11 53) c_ack!606))))

(check-sat)
(exit)
