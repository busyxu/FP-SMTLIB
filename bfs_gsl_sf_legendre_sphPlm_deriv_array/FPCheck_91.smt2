(declare-fun b_ack!426 () (_ BitVec 32))
(declare-fun a_ack!428 () (_ BitVec 32))
(declare-fun c_ack!427 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (bvslt b_ack!426 #x00000000)))
(assert (not (bvslt a_ack!428 b_ack!426)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!427) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!427) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (= #x00000000 b_ack!426)))
(assert (= #x00000001 b_ack!426))
(assert (not (bvslt b_ack!426 #x00000000)))
(assert (not (bvslt a_ack!428 b_ack!426)))
(assert (not (= #x00000000 b_ack!426)))
(assert (fp.eq ((_ to_fp 11 53) roundNearestTiesToEven (bvsub a_ack!428 b_ack!426))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.eq ((_ to_fp 11 53) roundNearestTiesToEven (bvsub a_ack!428 b_ack!426))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (FPCHECK_FADD_OVERFLOW
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x4000000000000000)
          ((_ to_fp 11 53) roundNearestTiesToEven a_ack!428))
  #x3ff0000000000000))

(check-sat)
(exit)
