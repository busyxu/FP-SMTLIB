(declare-fun b_ack!2187 () (_ BitVec 32))
(declare-fun a_ack!2189 () (_ BitVec 32))
(declare-fun c_ack!2188 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (bvslt b_ack!2187 #x00000000)))
(assert (not (bvslt a_ack!2189 b_ack!2187)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!2188) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!2188) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (= #x00000000 b_ack!2187))
(assert (not (bvslt a_ack!2189 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!2188) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!2188) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (= #x00000000 a_ack!2189)))
(assert (not (= #x00000001 a_ack!2189)))
(assert (not (= #x00000002 a_ack!2189)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!2188) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!2188) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (bvslt a_ack!2189 #x000186a0))
(assert (bvsle #x00000002 a_ack!2189))
(assert (bvsle #x00000003 a_ack!2189))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) c_ack!2188))
                           ((_ to_fp 11 53) #x4008000000000000))
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) c_ack!2188))
                           ((_ to_fp 11 53) #x3cb0000000000000))))
      (a!4 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) c_ack!2188))
                           ((_ to_fp 11 53) #x3cb0000000000000)))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3cb0000000000000)))
                   ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) c_ack!2188))
                           ((_ to_fp 11 53) #x4014000000000000))
                   a!2)))
  (FPCHECK_FDIV_OVERFLOW
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x3fe0000000000000)
            (fp.add roundNearestTiesToEven a!3 a!4))
    #x4008000000000000)))))

(check-sat)
(exit)
