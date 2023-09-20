(declare-fun alpha1_ack!1444 () (_ BitVec 64))
(declare-fun beta_ack!1445 () (_ BitVec 64))
(declare-fun mu_ack!1446 () (_ BitVec 32))
(declare-fun nu_ack!1447 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.lt ((_ to_fp 11 53) alpha1_ack!1444)
            ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) beta_ack!1445)
            ((_ to_fp 11 53) #xbff0000000000000))))
(assert (= #x00000000 mu_ack!1446))
(assert (= #x00000000 nu_ack!1447))
(assert (FPCHECK_FMUL_UNDERFLOW
  #x4020000000000000
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) #x4020000000000000)
          (fp.add roundNearestTiesToEven
                  ((_ to_fp 11 53) alpha1_ack!1444)
                  ((_ to_fp 11 53) #x4000000000000000)))))

(check-sat)
(exit)
