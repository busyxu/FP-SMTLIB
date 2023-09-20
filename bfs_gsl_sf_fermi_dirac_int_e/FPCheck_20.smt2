(declare-fun a_ack!68 () (_ BitVec 32))
(declare-fun b_ack!67 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_exp ((_ BitVec 64)) (_ FloatingPoint 11 53))
(assert (not (bvslt a_ack!68 #xffffffff)))
(assert (not (= #xffffffff a_ack!68)))
(assert (= #x00000000 a_ack!68))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!67) ((_ to_fp 11 53) #xc086232bdd7abcd2))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!67) ((_ to_fp 11 53) #xc014000000000000)))
(assert (FPCHECK_FSUB_UNDERFLOW
  #x3fc999999999999a
  (fp.div roundNearestTiesToEven
          (CF_exp b_ack!67)
          ((_ to_fp 11 53) #x4018000000000000))))

(check-sat)
(exit)
