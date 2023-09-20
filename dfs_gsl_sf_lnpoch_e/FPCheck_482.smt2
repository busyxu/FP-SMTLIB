(declare-fun a_ack!1655 () (_ BitVec 64))
(declare-fun b_ack!1654 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!1655) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq (fp.add roundNearestTiesToEven
                     ((_ to_fp 11 53) a_ack!1655)
                     ((_ to_fp 11 53) b_ack!1654))
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!1654) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!1654))
       (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x3fb999999999999a)
               ((_ to_fp 11 53) a_ack!1655))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!1655) ((_ to_fp 11 53) #x4065600000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!1655)
                       ((_ to_fp 11 53) b_ack!1654))
               ((_ to_fp 11 53) a_ack!1655))
       ((_ to_fp 11 53) b_ack!1654)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!1655)
                       ((_ to_fp 11 53) b_ack!1654))
               ((_ to_fp 11 53) b_ack!1654))
       ((_ to_fp 11 53) a_ack!1655)))
(assert (fp.lt (fp.add roundNearestTiesToEven
               ((_ to_fp 11 53) a_ack!1655)
               ((_ to_fp 11 53) b_ack!1654))
       ((_ to_fp 11 53) #x4065600000000000)))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!1655) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1655) ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (fp.eq ((_ to_fp 11 53) a_ack!1655) ((_ to_fp 11 53) #x3fe0000000000000)))
(assert (not (fp.leq (fp.add roundNearestTiesToEven
                     ((_ to_fp 11 53) a_ack!1655)
                     ((_ to_fp 11 53) b_ack!1654))
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt (fp.add roundNearestTiesToEven
               ((_ to_fp 11 53) a_ack!1655)
               ((_ to_fp 11 53) b_ack!1654))
       ((_ to_fp 11 53) #x3fe0000000000000)))
(assert (let ((a!1 (fp.abs (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1655)
                                   ((_ to_fp 11 53) b_ack!1654))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #x3f847ae147ae147b)))))
(assert (let ((a!1 (fp.abs (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1655)
                                   ((_ to_fp 11 53) b_ack!1654))
                           ((_ to_fp 11 53) #x4000000000000000)))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #x3f847ae147ae147b)))))
(assert (not (fp.geq (fp.add roundNearestTiesToEven
                     ((_ to_fp 11 53) a_ack!1655)
                     ((_ to_fp 11 53) b_ack!1654))
             ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (not (fp.eq (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!1655)
                    ((_ to_fp 11 53) b_ack!1654))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt (fp.abs (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!1655)
                       ((_ to_fp 11 53) b_ack!1654)))
       ((_ to_fp 11 53) #x3f947ae147ae147b)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!1655)
                           ((_ to_fp 11 53) b_ack!1654))
                   ((_ to_fp 11 53) #xbf3fbdf153d2eadd))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3f4ff0a5d7d0b01e)
                         a!1)
                 ((_ to_fp 11 53) #x3f4ff0a5d7d0b01e))
         a!1)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!1655)
                           ((_ to_fp 11 53) b_ack!1654))
                   ((_ to_fp 11 53) #xbf3fbdf153d2eadd))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3f4ff0a5d7d0b01e)
                         a!1)
                 a!1)
         ((_ to_fp 11 53) #x3f4ff0a5d7d0b01e))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3f4ff0a5d7d0b01e)
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1655)
                                   ((_ to_fp 11 53) b_ack!1654))
                           ((_ to_fp 11 53) #xbf3fbdf153d2eadd)))))
  (FPCHECK_FADD_UNDERFLOW
    #xbf5f094bd00128ce
    (fp.mul roundNearestTiesToEven
            (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!1655)
                    ((_ to_fp 11 53) b_ack!1654))
            a!1))))

(check-sat)
(exit)
