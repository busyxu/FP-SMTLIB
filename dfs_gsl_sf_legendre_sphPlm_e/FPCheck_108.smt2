(declare-fun b_ack!564 () (_ BitVec 32))
(declare-fun a_ack!566 () (_ BitVec 32))
(declare-fun c_ack!565 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt b_ack!564 #x00000000)))
(assert (not (bvslt a_ack!566 b_ack!564)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!565) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!565) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (= #x00000000 b_ack!564))
(assert (not (bvslt a_ack!566 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!565) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!565) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (= #x00000000 a_ack!566)))
(assert (not (= #x00000001 a_ack!566)))
(assert (not (= #x00000002 a_ack!566)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!565) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!565) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (bvslt a_ack!566 #x000186a0))
(assert (bvsle #x00000002 a_ack!566))
(assert (bvsle #x00000003 a_ack!566))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) c_ack!565))
                           ((_ to_fp 11 53) #x4008000000000000))
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) c_ack!565))
                           ((_ to_fp 11 53) #x3cb0000000000000)))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3cb0000000000000)))
                   ((_ to_fp 11 53) #x4000000000000000))))
  (FPCHECK_FMUL_ACCURACY
    (fp.mul roundNearestTiesToEven
            (fp.abs ((_ to_fp 11 53) c_ack!565))
            ((_ to_fp 11 53) #x4014000000000000))
    a!2))))

(check-sat)
(exit)
