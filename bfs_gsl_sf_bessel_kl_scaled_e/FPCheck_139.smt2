(declare-fun a_ack!508 () (_ BitVec 32))
(declare-fun b_ack!507 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt a_ack!508 #x00000000)))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!507) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #x00000000 a_ack!508)))
(assert (not (= #x00000001 a_ack!508)))
(assert (not (= #x00000002 a_ack!508)))
(assert (fp.lt ((_ to_fp 11 53) b_ack!507) ((_ to_fp 11 53) #x4008000000000000)))
(assert (bvslt (bvadd #x00000001 a_ack!508) #x00000000))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!507) ((_ to_fp 11 53) #x0000000000000000))))
(assert (= #x00000000 (bvand (bvsub #xffffffff a_ack!508) #x00000001)))
(assert (FPCHECK_FMUL_UNDERFLOW
  (fp.div roundNearestTiesToEven
          ((_ to_fp 11 53) #x3ff0000000000000)
          ((_ to_fp 11 53) b_ack!507))
  (fp.div roundNearestTiesToEven
          ((_ to_fp 11 53) #x3ff0000000000000)
          ((_ to_fp 11 53) b_ack!507))))

(check-sat)
(exit)
