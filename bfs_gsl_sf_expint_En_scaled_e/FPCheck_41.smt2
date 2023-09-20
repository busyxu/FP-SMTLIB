(declare-fun a_ack!153 () (_ BitVec 32))
(declare-fun b_ack!152 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (bvslt a_ack!153 #x00000000)))
(assert (not (= #x00000000 a_ack!153)))
(assert (= #x00000001 a_ack!153))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!152) ((_ to_fp 11 53) #xc085eeaad5511c64))))
(assert (fp.leq ((_ to_fp 11 53) b_ack!152) ((_ to_fp 11 53) #xc024000000000000)))
(assert (FPCHECK_FADD_ACCURACY
  (fp.div roundNearestTiesToEven
          ((_ to_fp 11 53) #x4034000000000000)
          ((_ to_fp 11 53) b_ack!152))
  #x3ff0000000000000))

(check-sat)
(exit)
