(declare-fun a_ack!192 () (_ BitVec 32))
(declare-fun b_ack!191 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt a_ack!192 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!191) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!191) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (= #x00000000 a_ack!192)))
(assert (not (= #x00000001 a_ack!192)))
(assert (not (= #x00000002 a_ack!192)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!191) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!191) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (bvslt a_ack!192 #x000186a0))
(assert (bvsle #x00000002 a_ack!192))
(assert (FPCHECK_FMUL_UNDERFLOW
  (fp.mul roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) b_ack!191))
          ((_ to_fp 11 53) #x4008000000000000))
  (fp.mul roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) b_ack!191))
          ((_ to_fp 11 53) #x3cb0000000000000))))

(check-sat)
(exit)
