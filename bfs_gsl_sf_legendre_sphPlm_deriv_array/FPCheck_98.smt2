(declare-fun b_ack!450 () (_ BitVec 32))
(declare-fun a_ack!452 () (_ BitVec 32))
(declare-fun c_ack!451 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (bvslt b_ack!450 #x00000000)))
(assert (not (bvslt a_ack!452 b_ack!450)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!451) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!451) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (= #x00000000 b_ack!450)))
(assert (= #x00000001 b_ack!450))
(assert (not (bvslt b_ack!450 #x00000000)))
(assert (not (bvslt a_ack!452 b_ack!450)))
(assert (not (= #x00000000 b_ack!450)))
(assert (fp.eq ((_ to_fp 11 53) roundNearestTiesToEven (bvsub a_ack!452 b_ack!450))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.eq ((_ to_fp 11 53) roundNearestTiesToEven (bvsub a_ack!452 b_ack!450))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (CF_log (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!452))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (FPCHECK_FADD_OVERFLOW
    (fp.mul roundNearestTiesToEven ((_ to_fp 11 53) #x3fe0000000000000) a!1)
    #x0000000000000000)))

(check-sat)
(exit)
