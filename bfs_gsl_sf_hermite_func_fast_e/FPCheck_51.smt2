(declare-fun a_ack!223 () (_ BitVec 32))
(declare-fun b_ack!222 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (bvslt a_ack!223 #x000003e8)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!222) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt a_ack!223 #x00000024)))
(assert (not (fp.leq ((_ to_fp 11 53)
               roundNearestTiesToEven
               (bvmul #x00000002 a_ack!223))
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FDIV_OVERFLOW
  (fp.div roundNearestTiesToEven
          ((_ to_fp 11 53) #x3ff0000000000000)
          ((_ to_fp 11 53) roundNearestTiesToEven (bvmul a_ack!223 a_ack!223)))
  #x40aa400000000000))

(check-sat)
(exit)
