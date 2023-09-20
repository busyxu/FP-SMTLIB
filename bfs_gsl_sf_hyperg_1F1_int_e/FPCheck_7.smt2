(declare-fun c_ack!50 () (_ BitVec 64))
(declare-fun b_ack!49 () (_ BitVec 32))
(declare-fun a_ack!51 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!50) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= a_ack!51 b_ack!49)))
(assert (not (= #x00000000 b_ack!49)))
(assert (not (= #x00000000 a_ack!51)))
(assert (not (bvslt b_ack!49 #x00000000)))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!50) ((_ to_fp 11 53) #x4059000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!50) ((_ to_fp 11 53) #xc059000000000000))))
(assert (not (bvslt a_ack!51 #x00000000)))
(assert (not (bvslt a_ack!51 #x00000000)))
(assert (not (= a_ack!51 b_ack!49)))
(assert (not (= #x00000001 a_ack!51)))
(assert (= b_ack!49 (bvadd #x00000001 a_ack!51)))
(assert (not (bvslt a_ack!51 #x00000000)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    ((_ to_fp 11 53) c_ack!50))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_UNDERFLOW
  #x3ed965fea53d6e41
  ((_ to_fp 11 53) roundNearestTiesToEven a_ack!51)))

(check-sat)
(exit)
