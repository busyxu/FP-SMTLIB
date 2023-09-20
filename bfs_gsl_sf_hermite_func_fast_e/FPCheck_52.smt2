(declare-fun a_ack!225 () (_ BitVec 32))
(declare-fun b_ack!224 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (bvslt a_ack!225 #x000003e8)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!224) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt a_ack!225 #x00000024)))
(assert (not (fp.leq ((_ to_fp 11 53)
               roundNearestTiesToEven
               (bvmul #x00000002 a_ack!225))
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FDIV_UNDERFLOW
  (fp.div roundNearestTiesToEven
          ((_ to_fp 11 53) #x3ff0000000000000)
          ((_ to_fp 11 53) roundNearestTiesToEven (bvmul a_ack!225 a_ack!225)))
  #x40aa400000000000))

(check-sat)
(exit)
