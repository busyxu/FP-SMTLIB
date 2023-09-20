(declare-fun a_ack!1149 () (_ BitVec 64))
(declare-fun b_ack!1148 () (_ BitVec 32))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_pow ((_ BitVec 64) (_ BitVec 64)) (_ FloatingPoint 11 53))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!1149) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (= #x00000000 b_ack!1148)))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1149) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #x00000001 b_ack!1148)))
(assert (not (bvule b_ack!1148 #x0000000a)))
(assert (fp.gt ((_ to_fp_unsigned 11 53) roundNearestTiesToEven b_ack!1148)
       (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x3fe0000000000000)
               ((_ to_fp 11 53) a_ack!1149))))
(assert (not (bvule b_ack!1148 #x00000014)))
(assert (not (fp.gt ((_ to_fp_unsigned 11 53) roundNearestTiesToEven b_ack!1148)
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4000000000000000)
                    ((_ to_fp 11 53) a_ack!1149)))))
(assert (not (bvult b_ack!1148 #x00000001)))
(assert (bvult (concat #x00000000 b_ack!1148) #x0000000000000065))
(assert (bvult #x0000000000000000
       (bvmul #x0000000000000008 (concat #x00000000 b_ack!1148))))
(assert (bvult (bvmul #x0000000000000008 (concat #x00000000 b_ack!1148))
       #x0000000000000321))
(assert (FPCHECK_FSUB_UNDERFLOW
  #x8000000000000000
  (CF_pow a_ack!1149 #xbfe5555555555555)))

(check-sat)
(exit)
