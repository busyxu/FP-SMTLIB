(declare-fun limit_ack!212 () (_ BitVec 64))
(declare-fun a_ack!213 () (_ BitVec 64))
(declare-fun b_ack!209 () (_ BitVec 64))
(declare-fun epsabs_ack!211 () (_ BitVec 64))
(declare-fun c_ack!210 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!212)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!209) ((_ to_fp 11 53) a_ack!213))))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!211)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!210) ((_ to_fp 11 53) a_ack!213))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!210) ((_ to_fp 11 53) b_ack!209))))
(assert (FPCHECK_FSUB_ACCURACY
  (fp.sub roundNearestTiesToEven
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) #x4000000000000000)
                  ((_ to_fp 11 53) c_ack!210))
          ((_ to_fp 11 53) b_ack!209))
  a_ack!213))

(check-sat)
(exit)
