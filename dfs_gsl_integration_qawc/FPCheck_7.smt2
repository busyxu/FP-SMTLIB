(declare-fun limit_ack!116 () (_ BitVec 64))
(declare-fun a_ack!117 () (_ BitVec 64))
(declare-fun b_ack!112 () (_ BitVec 64))
(declare-fun epsabs_ack!114 () (_ BitVec 64))
(declare-fun epsrel_ack!115 () (_ BitVec 64))
(declare-fun c_ack!113 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!116)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!112) ((_ to_fp 11 53) a_ack!117))))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!114) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!115)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!115)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!113) ((_ to_fp 11 53) a_ack!117))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!113) ((_ to_fp 11 53) b_ack!112))))
(assert (FPCHECK_FSUB_UNDERFLOW
  (fp.sub roundNearestTiesToEven
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) #x4000000000000000)
                  ((_ to_fp 11 53) c_ack!113))
          ((_ to_fp 11 53) b_ack!112))
  a_ack!117))

(check-sat)
(exit)
