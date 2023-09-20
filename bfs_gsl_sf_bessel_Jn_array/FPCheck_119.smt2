(declare-fun a_ack!625 () (_ BitVec 32))
(declare-fun b_ack!623 () (_ BitVec 32))
(declare-fun c_ack!624 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt a_ack!625 #x00000000)))
(assert (not (bvslt b_ack!623 a_ack!625)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!624) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt (bvadd #x00000001 b_ack!623) #x00000000)))
(assert (fp.lt ((_ to_fp 11 53) c_ack!624) ((_ to_fp 11 53) #x0000000000000000)))
(assert (= #x00000000 (bvand (bvadd #x00000001 b_ack!623) #x00000001)))
(assert (not (= #xffffffff b_ack!623)))
(assert (not (= #x00000000 b_ack!623)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    ((_ to_fp 11 53) c_ack!624))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_OVERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) #x8000000000000000)
          ((_ to_fp 11 53) c_ack!624))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) #x8000000000000000)
          ((_ to_fp 11 53) c_ack!624))))

(check-sat)
(exit)
