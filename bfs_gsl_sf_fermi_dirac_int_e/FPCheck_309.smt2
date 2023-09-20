(declare-fun a_ack!936 () (_ BitVec 32))
(declare-fun b_ack!935 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_exp ((_ BitVec 64)) (_ FloatingPoint 11 53))
(assert (not (bvslt a_ack!936 #xffffffff)))
(assert (not (= #xffffffff a_ack!936)))
(assert (not (= #x00000000 a_ack!936)))
(assert (not (= #x00000001 a_ack!936)))
(assert (not (= #x00000002 a_ack!936)))
(assert (fp.lt ((_ to_fp 11 53) b_ack!935) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!935) ((_ to_fp 11 53) #xc086232bdd7abcd2))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!935) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (FPCHECK_FSUB_UNDERFLOW
  #x8000000000000000
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) #x8000000000000000)
          (CF_exp b_ack!935))))

(check-sat)
(exit)
