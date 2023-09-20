(declare-fun b_ack!594 () (_ BitVec 32))
(declare-fun a_ack!596 () (_ BitVec 32))
(declare-fun c_ack!595 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (bvslt b_ack!594 #x00000000)))
(assert (not (bvslt a_ack!596 b_ack!594)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!595) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!595) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (bvslt #x00000000 b_ack!594)))
(assert (= #x00000000 b_ack!594))
(assert (not (= a_ack!596 b_ack!594)))
(assert (not (= a_ack!596 (bvadd #x00000001 b_ack!594))))
(assert (bvsle (bvadd #x00000002 b_ack!594) a_ack!596))
(assert (FPCHECK_FMUL_UNDERFLOW
  ((_ to_fp 11 53)
    roundNearestTiesToEven
    (bvadd #x00000001 b_ack!594 b_ack!594))
  #x3fd20dd750429b6d))

(check-sat)
(exit)
