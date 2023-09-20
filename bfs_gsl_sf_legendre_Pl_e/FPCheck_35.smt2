(declare-fun a_ack!132 () (_ BitVec 32))
(declare-fun b_ack!131 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_acos ((_ BitVec 64)) (_ FloatingPoint 11 53))
(assert (not (bvslt a_ack!132 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!131) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!131) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (= #x00000000 a_ack!132)))
(assert (not (= #x00000001 a_ack!132)))
(assert (not (= #x00000002 a_ack!132)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!131) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!131) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (bvslt a_ack!132 #x000186a0)))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) roundNearestTiesToEven a_ack!132)
          ((_ to_fp 11 53) #x3fe0000000000000))
  (CF_acos b_ack!131)))

(check-sat)
(exit)
