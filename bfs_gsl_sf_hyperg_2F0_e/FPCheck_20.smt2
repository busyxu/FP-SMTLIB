(declare-fun c_ack!67 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun b_ack!66 () (_ BitVec 64))
(declare-fun a_ack!68 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) c_ack!67) ((_ to_fp 11 53) #x0000000000000000)))
(assert (FPCHECK_FADD_ACCURACY
  (fp.sub roundNearestTiesToEven
          (fp.add roundNearestTiesToEven
                  ((_ to_fp 11 53) #x3ff0000000000000)
                  ((_ to_fp 11 53) a_ack!68))
          ((_ to_fp 11 53) b_ack!66))
  #x3fe0000000000000))

(check-sat)
(exit)
