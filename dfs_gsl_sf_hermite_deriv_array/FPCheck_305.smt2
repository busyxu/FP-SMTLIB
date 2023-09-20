(declare-fun b_ack!1791 () (_ BitVec 32))
(declare-fun a_ack!1793 () (_ BitVec 32))
(declare-fun c_ack!1792 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt b_ack!1791 #x00000000)))
(assert (not (bvslt a_ack!1793 #x00000000)))
(assert (not (= #x00000000 b_ack!1791)))
(assert (not (= #x00000001 b_ack!1791)))
(assert (= #x00000000 a_ack!1793))
(assert (not (bvslt b_ack!1791 #x00000000)))
(assert (not (= #x00000000 b_ack!1791)))
(assert (not (= #x00000001 b_ack!1791)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!1792) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.gt (fp.abs (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x4000000000000000)
                                  ((_ to_fp 11 53) c_ack!1792)))
                  ((_ to_fp 11 53) #x3ff0000000000000))))
  (not a!1)))
(assert (bvsle #x00000001 (bvadd #xffffffff b_ack!1791)))
(assert (let ((a!1 (fp.gt (fp.abs (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x4000000000000000)
                                  ((_ to_fp 11 53) c_ack!1792)))
                  ((_ to_fp 11 53) #x7fefffffffffffff))))
  (not a!1)))
(assert (not (bvsle #x00000002 (bvadd #xffffffff b_ack!1791))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.abs ((_ to_fp 11 53) c_ack!1792)))
                   ((_ to_fp 11 53) #x3cb0000000000000)))
      (a!3 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) c_ack!1792))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) c_ack!1792)))
                   ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) c_ack!1792))
                           a!1)
                   ((_ to_fp 11 53) #x3cb0000000000000))))
  (FPCHECK_FADD_UNDERFLOW
    (fp.mul roundNearestTiesToEven ((_ to_fp 11 53) #x4000000000000000) a!2)
    (fp.mul roundNearestTiesToEven
            (fp.abs a!3)
            ((_ to_fp 11 53) #x3cb0000000000000))))))

(check-sat)
(exit)
