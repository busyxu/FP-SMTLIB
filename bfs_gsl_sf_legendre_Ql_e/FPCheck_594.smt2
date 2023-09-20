(declare-fun b_ack!1918 () (_ BitVec 64))
(declare-fun a_ack!1919 () (_ BitVec 32))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!1918) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!1918) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (bvslt a_ack!1919 #x00000000)))
(assert (not (= #x00000000 a_ack!1919)))
(assert (not (= #x00000001 a_ack!1919)))
(assert (not (bvslt #x000186a0 a_ack!1919)))
(assert (fp.lt ((_ to_fp 11 53) b_ack!1918) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!1918) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!1918) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) b_ack!1918)
                    ((_ to_fp 11 53) b_ack!1918))
            ((_ to_fp 11 53) #x3f6428a2f98d728d))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!1918) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) b_ack!1918))
               ((_ to_fp 11 53) #x3ff0000000000000))
       ((_ to_fp 11 53) b_ack!1918)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) b_ack!1918))
               ((_ to_fp 11 53) b_ack!1918))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!1918) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!1918) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) b_ack!1918)
                    ((_ to_fp 11 53) b_ack!1918))
            ((_ to_fp 11 53) #x3f6428a2f98d728d))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!1918) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (let ((a!1 (CF_log (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!1918))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!1918))))))
  (FPCHECK_FSUB_OVERFLOW
    (fp.mul roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fe0000000000000)
                    ((_ to_fp 11 53) b_ack!1918))
            a!1)
    #x3ff0000000000000)))

(check-sat)
(exit)
