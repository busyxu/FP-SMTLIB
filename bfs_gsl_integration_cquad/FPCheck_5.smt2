(declare-fun epsabs_ack!32 () (_ BitVec 64))
(declare-fun epsrel_ack!33 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun b_ack!31 () (_ BitVec 64))
(declare-fun a_ack!34 () (_ BitVec 64))
(assert (not (fp.lt ((_ to_fp 11 53) epsabs_ack!32)
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!33)
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!32)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FDIV_ACCURACY
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!34)
          ((_ to_fp 11 53) b_ack!31))
  #x4000000000000000))

(check-sat)
(exit)
