(declare-fun a_ack!2664 () (_ BitVec 32))
(declare-fun b_ack!2663 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt a_ack!2664 #x00000000)))
(assert (not (= #x00000000 a_ack!2664)))
(assert (= #x00000001 a_ack!2664))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!2663) ((_ to_fp 11 53) #xc085eeaad5511c64))))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!2663) ((_ to_fp 11 53) #xc024000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!2663) ((_ to_fp 11 53) #xc010000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!2663) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!2663) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!2663) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!2663) ((_ to_fp 11 53) #x4010000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!2663) ((_ to_fp 11 53) #x4085eeaad5511c64))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4020000000000000)
                                   ((_ to_fp 11 53) b_ack!2663))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #xbff0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!3 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   a!2)
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) #x0000000000000000))))
  (FPCHECK_FMUL_OVERFLOW
    (fp.mul roundNearestTiesToEven ((_ to_fp 11 53) #x4000000000000000) a!2)
    (fp.add roundNearestTiesToEven a!3 ((_ to_fp 11 53) #xbc8cd2b297d889bc)))))))

(check-sat)
(exit)
