(declare-fun a_ack!693 () (_ BitVec 32))
(declare-fun c_ack!692 () (_ BitVec 64))
(declare-fun b_ack!691 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (bvslt a_ack!693 #x00000000)))
(assert (not (= #x00000000 a_ack!693)))
(assert (not (= #x00000001 a_ack!693)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!692) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!692) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt a_ack!693 #x00000005)))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!692) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt ((_ to_fp 11 53) roundNearestTiesToEven a_ack!693)
       ((_ to_fp 11 53) #x416312d000000000)))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!692) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!691) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!691) ((_ to_fp 11 53) #xc000000000000000))))
(assert (bvslt #x00000002 a_ack!693))
(assert (bvslt #x00000003 a_ack!693))
(assert (bvslt #x00000004 a_ack!693))
(assert (bvslt #x00000005 a_ack!693))
(assert (bvslt #x00000006 a_ack!693))
(assert (FPCHECK_FADD_UNDERFLOW
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) #x4028000000000000)
          ((_ to_fp 11 53) b_ack!691))
  #x3ff0000000000000))

(check-sat)
(exit)
