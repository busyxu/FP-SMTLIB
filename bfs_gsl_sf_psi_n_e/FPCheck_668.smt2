(declare-fun a_ack!1840 () (_ BitVec 32))
(declare-fun b_ack!1839 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (= #x00000000 a_ack!1840))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!1839) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!1839) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!1839) ((_ to_fp 11 53) #xc000000000000000))))
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) b_ack!1839))
             ((_ to_fp 11 53) #x4000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1839) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!1839) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!1839)
                       ((_ to_fp 11 53) #x3ff0000000000000))
               ((_ to_fp 11 53) b_ack!1839))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!1839)
                       ((_ to_fp 11 53) #x3ff0000000000000))
               ((_ to_fp 11 53) #x3ff0000000000000))
       ((_ to_fp 11 53) b_ack!1839)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1839)
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   a!1)
                           ((_ to_fp 11 53) #xbff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.div roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4000000000000000)))
                   ((_ to_fp 11 53) #x0000000000000000))))
  (FPCHECK_FADD_OVERFLOW
    (fp.add roundNearestTiesToEven
            (fp.abs a!3)
            ((_ to_fp 11 53) #x0000000000000000))
    #x3c770ef54646d497)))))

(check-sat)
(exit)
