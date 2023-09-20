(declare-fun a_ack!922 () (_ BitVec 32))
(declare-fun b_ack!920 () (_ BitVec 32))
(declare-fun c_ack!921 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (bvslt a_ack!922 #x00000000)))
(assert (not (bvslt b_ack!920 a_ack!922)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!921) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt (bvadd #x00000001 b_ack!920) #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!921) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #xffffffff b_ack!920)))
(assert (= #x00000000 b_ack!920))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) c_ack!921))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) c_ack!921))
            ((_ to_fp 11 53) #x0020000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) c_ack!921))
            ((_ to_fp 11 53) #x3e66a09e667f3bcd))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) c_ack!921))
            ((_ to_fp 11 53) #x4010000000000000))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4040000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) c_ack!921))
                           (fp.abs ((_ to_fp 11 53) c_ack!921))))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.sub roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   ((_ to_fp 11 53) #xbff0000000000000))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x4000000000000000)))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x0000000000000000)))
                   ((_ to_fp 11 53) #x0000000000000000))))
  (FPCHECK_FADD_OVERFLOW a!4 #x3c8cd2b297d889bc))))))

(check-sat)
(exit)
