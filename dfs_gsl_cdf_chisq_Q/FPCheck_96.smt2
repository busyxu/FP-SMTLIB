(declare-fun x_ack!400 () (_ BitVec 64))
(declare-fun nu_ack!399 () (_ BitVec 64))
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FADD_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.leq ((_ to_fp 11 53) x_ack!400) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!400)
                    ((_ to_fp 11 53) #x4000000000000000))
            (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) nu_ack!399)
                    ((_ to_fp 11 53) #x4000000000000000)))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) nu_ack!399)
                    ((_ to_fp 11 53) #x4000000000000000))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!400)
                    ((_ to_fp 11 53) #x4000000000000000))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!400)
                    ((_ to_fp 11 53) #x4000000000000000))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) nu_ack!399)
                    ((_ to_fp 11 53) #x4000000000000000))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.leq (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!400)
                           ((_ to_fp 11 53) #x4000000000000000))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu_ack!399)
                                   ((_ to_fp 11 53) #x4000000000000000))))))
  (not a!1)))
(assert (not (fp.geq (fp.div roundNearestTiesToEven
                     ((_ to_fp 11 53) nu_ack!399)
                     ((_ to_fp 11 53) #x4000000000000000))
             ((_ to_fp 11 53) #x412e848000000000))))
(assert (fp.lt (fp.div roundNearestTiesToEven
               ((_ to_fp 11 53) nu_ack!399)
               ((_ to_fp 11 53) #x4000000000000000))
       ((_ to_fp 11 53) #x3fc999999999999a)))
(assert (fp.lt (fp.div roundNearestTiesToEven
               ((_ to_fp 11 53) x_ack!400)
               ((_ to_fp 11 53) #x4000000000000000))
       ((_ to_fp 11 53) #x4014000000000000)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe2788cfc6fb619)
                   (CF_log (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!400)
                                   ((_ to_fp 11 53) #x4000000000000000))))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 a!1
                 ((_ to_fp 11 53) #x3fe2788cfc6fb619))
         (CF_log (fp.div roundNearestTiesToEven
                         ((_ to_fp 11 53) x_ack!400)
                         ((_ to_fp 11 53) #x4000000000000000))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe2788cfc6fb619)
                   (CF_log (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!400)
                                   ((_ to_fp 11 53) #x4000000000000000))))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   a!1
                   (CF_log (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!400)
                                   ((_ to_fp 11 53) #x4000000000000000))))))
  (fp.eq a!2 ((_ to_fp 11 53) #x3fe2788cfc6fb619)))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe2788cfc6fb619)
                   (CF_log (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!400)
                                   ((_ to_fp 11 53) #x4000000000000000))))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fea51a6625307d3)
                           (fp.div roundNearestTiesToEven
                                   (fp.mul roundNearestTiesToEven a!1 a!1)
                                   ((_ to_fp 11 53) #x4018000000000000)))
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven a!1 a!1)
                           ((_ to_fp 11 53) #x4018000000000000)))))
  (fp.eq a!2 ((_ to_fp 11 53) #x3fea51a6625307d3)))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe2788cfc6fb619)
                   (CF_log (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!400)
                                   ((_ to_fp 11 53) #x4000000000000000))))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fea51a6625307d3)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fea51a6625307d3)
                           (fp.div roundNearestTiesToEven
                                   (fp.mul roundNearestTiesToEven a!1 a!1)
                                   ((_ to_fp 11 53) #x4018000000000000))))))
  (fp.eq a!2
         (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven a!1 a!1)
                 ((_ to_fp 11 53) #x4018000000000000))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbffc21c3e15d140a)
                   (CF_log (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!400)
                                   ((_ to_fp 11 53) #x4000000000000000))))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 a!1
                 ((_ to_fp 11 53) #xbffc21c3e15d140a))
         (CF_log (fp.div roundNearestTiesToEven
                         ((_ to_fp 11 53) x_ack!400)
                         ((_ to_fp 11 53) #x4000000000000000))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbffc21c3e15d140a)
                   (CF_log (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!400)
                                   ((_ to_fp 11 53) #x4000000000000000))))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   a!1
                   (CF_log (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!400)
                                   ((_ to_fp 11 53) #x4000000000000000))))))
  (fp.eq a!2 ((_ to_fp 11 53) #xbffc21c3e15d140a)))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbffc21c3e15d140a)
                   (CF_log (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!400)
                                   ((_ to_fp 11 53) #x4000000000000000))))))
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven
                         ((_ to_fp 11 53) #xbfa5555555555555)
                         a!1)
                 ((_ to_fp 11 53) #xbfa5555555555555))
         a!1)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbffc21c3e15d140a)
                   (CF_log (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!400)
                                   ((_ to_fp 11 53) #x4000000000000000))))))
  (not (fp.eq (fp.abs a!1) ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbffc21c3e15d140a)
                   (CF_log (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!400)
                                   ((_ to_fp 11 53) #x4000000000000000))))))
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven
                         ((_ to_fp 11 53) #xbfa5555555555555)
                         a!1)
                 a!1)
         ((_ to_fp 11 53) #xbfa5555555555555))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe72ad94dc1fec8)
                   (CF_log (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!400)
                                   ((_ to_fp 11 53) #x4000000000000000))))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 a!1
                 ((_ to_fp 11 53) #x3fe72ad94dc1fec8))
         (CF_log (fp.div roundNearestTiesToEven
                         ((_ to_fp 11 53) x_ack!400)
                         ((_ to_fp 11 53) #x4000000000000000))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe72ad94dc1fec8)
                   (CF_log (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!400)
                                   ((_ to_fp 11 53) #x4000000000000000))))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   a!1
                   (CF_log (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!400)
                                   ((_ to_fp 11 53) #x4000000000000000))))))
  (fp.eq a!2 ((_ to_fp 11 53) #x3fe72ad94dc1fec8)))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x40106e22afa35265)
                   (CF_log (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!400)
                                   ((_ to_fp 11 53) #x4000000000000000))))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 a!1
                 ((_ to_fp 11 53) #x40106e22afa35265))
         (CF_log (fp.div roundNearestTiesToEven
                         ((_ to_fp 11 53) x_ack!400)
                         ((_ to_fp 11 53) #x4000000000000000))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x40106e22afa35265)
                   (CF_log (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!400)
                                   ((_ to_fp 11 53) #x4000000000000000))))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   a!1
                   (CF_log (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!400)
                                   ((_ to_fp 11 53) #x4000000000000000))))))
  (fp.eq a!2 ((_ to_fp 11 53) #x40106e22afa35265)))))
(assert (FPCHECK_FADD_ACCURACY
  #xc0027713de49b2e2
  (CF_log (fp.div roundNearestTiesToEven
                  ((_ to_fp 11 53) x_ack!400)
                  ((_ to_fp 11 53) #x4000000000000000)))))

(check-sat)
(exit)
