(declare-fun a_ack!116 () (_ BitVec 32))
(declare-fun b_ack!114 () (_ BitVec 32))
(declare-fun c_ack!115 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt a_ack!116 #x00000000)))
(assert (not (bvslt b_ack!114 a_ack!116)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!115) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt (bvadd #x00000001 b_ack!114) #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!115) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #xffffffff b_ack!114)))
(assert (= #x00000000 b_ack!114))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) c_ack!115))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) c_ack!115))
            ((_ to_fp 11 53) #x0020000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) c_ack!115))
            ((_ to_fp 11 53) #x3e66a09e667f3bcd))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) c_ack!115))
       ((_ to_fp 11 53) #x4010000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fc0000000000000)
                           (fp.abs ((_ to_fp 11 53) c_ack!115)))
                   (fp.abs ((_ to_fp 11 53) c_ack!115)))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) #x3ff0000000000000))
                 ((_ to_fp 11 53) #x3ff0000000000000))
         a!1)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fc0000000000000)
                           (fp.abs ((_ to_fp 11 53) c_ack!115)))
                   (fp.abs ((_ to_fp 11 53) c_ack!115)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 a!1
                 (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) #x3ff0000000000000)))
         ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fc0000000000000)
                           (fp.abs ((_ to_fp 11 53) c_ack!115)))
                   (fp.abs ((_ to_fp 11 53) c_ack!115)))))
  (FPCHECK_FMUL_UNDERFLOW
    #x4000000000000000
    (fp.sub roundNearestTiesToEven a!1 ((_ to_fp 11 53) #x3ff0000000000000)))))

(check-sat)
(exit)
