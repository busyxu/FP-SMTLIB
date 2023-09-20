(declare-fun a_ack!1119 () (_ BitVec 32))
(declare-fun b_ack!1118 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (bvslt a_ack!1119 #x00000000)))
(assert (not (= #x00000000 a_ack!1119)))
(assert (not (= #x00000001 a_ack!1119)))
(assert (= #x00000002 a_ack!1119))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1118) ((_ to_fp 11 53) #xc085eeaad5511c64))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!1118) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!1118) ((_ to_fp 11 53) #x4059000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1118) ((_ to_fp 11 53) #xc085eeaad5511c64))))
(assert (fp.leq ((_ to_fp 11 53) b_ack!1118) ((_ to_fp 11 53) #xc024000000000000)))
(assert (FPCHECK_FMUL_UNDERFLOW
  (fp.div roundNearestTiesToEven
          ((_ to_fp 11 53) #x3ff0000000000000)
          ((_ to_fp 11 53) b_ack!1118))
  #x3ff0000000000000))

(check-sat)
(exit)
