(declare-fun p0_ack!1798 () (_ BitVec 64))
(declare-fun x0_ack!1795 () (_ BitVec 64))
(declare-fun p2_ack!1794 () (_ BitVec 64))
(declare-fun p1_ack!1793 () (_ BitVec 64))
(declare-fun x1_ack!1796 () (_ BitVec 64))
(declare-fun step_size_ack!1797 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ZERO ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (let ((a!1 (fp.eq (fp.mul roundNearestTiesToEven
                          (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x4000000000000000)
                                  ((_ to_fp 11 53) p2_ack!1794))
                          (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) x0_ack!1795)
                                  ((_ to_fp 11 53) p0_ack!1798)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.abs (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) p2_ack!1794))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x0_ack!1795)
                                   ((_ to_fp 11 53) p0_ack!1798))))))
  (fp.lt ((_ to_fp 11 53) #x0000000000000000) a!1)))
(assert (let ((a!1 (fp.eq (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) #x0000000000000000)
                          (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) x1_ack!1796)
                                  ((_ to_fp 11 53) p1_ack!1793)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not (not a!1))))
(assert (let ((a!1 (fp.abs (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) p2_ack!1794))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x0_ack!1795)
                                   ((_ to_fp 11 53) p0_ack!1798))))))
  (not (fp.eq (fp.mul roundNearestTiesToEven
                      a!1
                      ((_ to_fp 11 53) #x3ff0000000000000))
              ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.abs (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) p2_ack!1794))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x0_ack!1795)
                                   ((_ to_fp 11 53) p0_ack!1798))))))
  (not (fp.eq (fp.mul roundNearestTiesToEven
                      a!1
                      ((_ to_fp 11 53) #x3ff0000000000000))
              ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) p2_ack!1794))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x0_ack!1795)
                           ((_ to_fp 11 53) p0_ack!1798))))
      (a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x0000000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!1796)
                           ((_ to_fp 11 53) p1_ack!1793)))))
(let ((a!3 (fp.geq (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   (fp.mul roundNearestTiesToEven a!1 a!1))
                           (fp.mul roundNearestTiesToEven a!2 a!2))
                   ((_ to_fp 11 53) #x0000000000000000))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           ((_ to_fp 11 53) step_size_ack!1797))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             (ite a!3 #x3ff0000000000000 #xbff0000000000000))
                           (fp.mul roundNearestTiesToEven
                                   (fp.abs a!1)
                                   ((_ to_fp 11 53) #x3ff0000000000000))))))
  (fp.eq a!4 ((_ to_fp 11 53) #x0000000000000000))))))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) p2_ack!1794))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) x0_ack!1795)
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) p0_ack!1798))))
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven
                         ((_ to_fp 11 53) p2_ack!1794)
                         a!1)
                 ((_ to_fp 11 53) p2_ack!1794))
         a!1)))
(assert (let ((a!1 (fp.abs (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) x0_ack!1795)
                                   ((_ to_fp 11 53) #x0000000000000000))
                           ((_ to_fp 11 53) p0_ack!1798)))))
  (not (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) x0_ack!1795)
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) p0_ack!1798))))
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven
                         ((_ to_fp 11 53) p2_ack!1794)
                         a!1)
                 a!1)
         ((_ to_fp 11 53) p2_ack!1794))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) x0_ack!1795)
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) p0_ack!1798)))
      (a!2 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!1796)
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) p1_ack!1793)))
      (a!4 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) p2_ack!1794)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x0_ack!1795)
                                   ((_ to_fp 11 53) p0_ack!1798)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x0_ack!1795)
                           ((_ to_fp 11 53) p0_ack!1798))))
      (a!5 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x0000000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1796)
                                   ((_ to_fp 11 53) p1_ack!1793)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!1796)
                           ((_ to_fp 11 53) p1_ack!1793)))))
(let ((a!3 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) p2_ack!1794)
                                   a!1)
                           a!1)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   a!2)
                           a!2))))
  (not (fp.lt (fp.add roundNearestTiesToEven
                      a!3
                      ((_ to_fp 11 53) #x0000000000000000))
              (fp.add roundNearestTiesToEven
                      (fp.add roundNearestTiesToEven a!4 a!5)
                      ((_ to_fp 11 53) #x0000000000000000)))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) p2_ack!1794))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x0_ack!1795)
                           ((_ to_fp 11 53) p0_ack!1798))))
      (a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x0000000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!1796)
                           ((_ to_fp 11 53) p1_ack!1793)))))
(let ((a!3 (fp.geq (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   (fp.mul roundNearestTiesToEven a!1 a!1))
                           (fp.mul roundNearestTiesToEven a!2 a!2))
                   ((_ to_fp 11 53) #x0000000000000000))))
  (FPCHECK_FDIV_ZERO
    (ite a!3 #x3ff0000000000000 #xbff0000000000000)
    (fp.mul roundNearestTiesToEven
            (fp.abs a!1)
            ((_ to_fp 11 53) #x3ff0000000000000))))))

(check-sat)
(exit)
