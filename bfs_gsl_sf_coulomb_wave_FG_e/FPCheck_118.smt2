(declare-fun b_ack!755 () (_ BitVec 64))
(declare-fun c_ack!756 () (_ BitVec 64))
(declare-fun d_ack!757 () (_ BitVec 32))
(declare-fun a_ack!758 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!755) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!756) ((_ to_fp 11 53) #xbfe0000000000000))))
(assert (not (fp.leq (fp.sub roundNearestTiesToEven
                     ((_ to_fp 11 53) c_ack!756)
                     ((_ to_fp 11 53) roundNearestTiesToEven d_ack!757))
             ((_ to_fp 11 53) #xbfe0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!755) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!755) ((_ to_fp 11 53) #x3ff3333333333333))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!755)
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4000000000000000)
                    ((_ to_fp 11 53) a_ack!758)))))
(assert (FPCHECK_FADD_ACCURACY
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) c_ack!756)
          ((_ to_fp 11 53) #x7ff8000000000001))
  #x3fe0000000000000))

(check-sat)
(exit)
