(declare-fun a_ack!863 () (_ BitVec 32))
(declare-fun b_ack!862 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (bvslt a_ack!863 #x00000000)))
(assert (not (= #x00000000 a_ack!863)))
(assert (= #x00000001 a_ack!863))
(assert (fp.lt ((_ to_fp 11 53) b_ack!862) ((_ to_fp 11 53) #xc085eeaad5511c64)))
(assert (fp.leq ((_ to_fp 11 53) b_ack!862) ((_ to_fp 11 53) #xc024000000000000)))
(assert (FPCHECK_FADD_ACCURACY
  (fp.div roundNearestTiesToEven
          ((_ to_fp 11 53) #x4034000000000000)
          ((_ to_fp 11 53) b_ack!862))
  #x3ff0000000000000))

(check-sat)
(exit)
