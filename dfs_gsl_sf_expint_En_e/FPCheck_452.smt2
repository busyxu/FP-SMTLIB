(declare-fun a_ack!1289 () (_ BitVec 32))
(declare-fun b_ack!1288 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_exp ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (bvslt a_ack!1289 #x00000000)))
(assert (not (= #x00000000 a_ack!1289)))
(assert (not (= #x00000001 a_ack!1289)))
(assert (= #x00000002 a_ack!1289))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1288) ((_ to_fp 11 53) #xc085eeaad5511c64))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!1288) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!1288) ((_ to_fp 11 53) #x4059000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1288) ((_ to_fp 11 53) #xc085eeaad5511c64))))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!1288) ((_ to_fp 11 53) #xc024000000000000))))
(assert (fp.leq ((_ to_fp 11 53) b_ack!1288) ((_ to_fp 11 53) #xc010000000000000)))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.div roundNearestTiesToEven
          ((_ to_fp 11 53) #x3ff0000000000000)
          ((_ to_fp 11 53) b_ack!1288))
  (CF_exp (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) #x8000000000000000)
                  ((_ to_fp 11 53) b_ack!1288)))))

(check-sat)
(exit)
