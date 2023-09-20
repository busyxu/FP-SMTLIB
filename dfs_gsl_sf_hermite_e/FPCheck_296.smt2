(declare-fun a_ack!1170 () (_ BitVec 32))
(declare-fun b_ack!1169 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (bvslt a_ack!1170 #x00000000)))
(assert (not (= #x00000000 a_ack!1170)))
(assert (not (= #x00000001 a_ack!1170)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!1169) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.gt (fp.abs (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x4000000000000000)
                                  ((_ to_fp 11 53) b_ack!1169)))
                  ((_ to_fp 11 53) #x3ff0000000000000))))
  (not a!1)))
(assert (bvsle #x00000001 (bvadd #xffffffff a_ack!1170)))
(assert (let ((a!1 (fp.gt (fp.abs (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x4000000000000000)
                                  ((_ to_fp 11 53) b_ack!1169)))
                  ((_ to_fp 11 53) #x7fefffffffffffff))))
  (not a!1)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.abs ((_ to_fp 11 53) b_ack!1169)))
                   ((_ to_fp 11 53) #x3cb0000000000000))))
  (FPCHECK_FADD_UNDERFLOW
    (fp.mul roundNearestTiesToEven (fp.abs ((_ to_fp 11 53) b_ack!1169)) a!1)
    #x3cb0000000000000)))

(check-sat)
(exit)
